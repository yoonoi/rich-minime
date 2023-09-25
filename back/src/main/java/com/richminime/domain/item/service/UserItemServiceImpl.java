package com.richminime.domain.item.service;

import com.richminime.domain.bankBook.constant.TransactionType;
import com.richminime.domain.bankBook.dao.BankBookRepository;
import com.richminime.domain.bankBook.domain.BankBook;
import com.richminime.domain.item.domain.Item;
import com.richminime.domain.item.domain.ItemType;
import com.richminime.domain.item.domain.UserItem;
import com.richminime.domain.item.dto.ItemResDto;
import com.richminime.domain.item.dto.ItemSearchCondition;
import com.richminime.domain.item.dto.UserItemResDto;
import com.richminime.domain.item.repository.ItemRepository;
import com.richminime.domain.item.repository.UserItemRepository;
import com.richminime.domain.user.domain.User;
import com.richminime.domain.user.domain.UserType;
import com.richminime.domain.user.repository.UserRepository;
import com.richminime.global.util.SecurityUtils;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import javax.transaction.Transactional;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Slf4j
@Service
@RequiredArgsConstructor
public class UserItemServiceImpl implements UserItemService {

    private final UserItemRepository userItemRepository;
    private final ItemRepository itemRepository;
    private final UserRepository userRepository;
    private final BankBookRepository bankBookRepository;
    private final SecurityUtils securityUtils;

    /**
     * 로그인 유저를 반환하는 메서드
     * @return
     */
    public User getLoginUser() {
        String loginUserEmail = securityUtils.getLoggedInUserEmail();

        User loginUser = userRepository.findByEmail(loginUserEmail)
                .orElseThrow(() -> {
                    log.error("[UserItem Service] 로그인 유저를 찾을 수 없습니다.");
                    return new ResponseStatusException(HttpStatus.NOT_FOUND, "로그인 유저를 찾을 수 없습니다.");
                });

        return loginUser;
    }

    /**
     * 로그인 유저가 관리자인지 확인하는 메서드
     * 관리자면 true 반환 / 일반회원이면 false 반환
     */
    public boolean isAdmin() {
        User loginUser = getLoginUser();

        if(loginUser.getUserType().equals(UserType.ROLE_ADMIN))
            return true;

        return false;
    }

    /**
     * 로그인 유저와 UserItem의 User가 동일한지 반환하는 메서드
     * 일치하면 true / 불일치하면 false
     * @param owmerUser
     * @return
     */
    public boolean loginUserIsSameWithOwner(User owmerUser) {
        Long loginUserId = getLoginUser().getUserId();
        Long ownerId = owmerUser.getUserId();

        return loginUserId.equals(ownerId);
    }

    /**
     * 소유한 테마 전체 조회
     * @return
     */
    @Transactional
    @Override
    public List<UserItemResDto> findAllUserItem() {
        Long loginUserId = getLoginUser().getUserId();

        log.info("[소유한 테마 전체 조회] 사용자가 소유한 테마 전체 조회, userId : {}", loginUserId);

        return userItemRepository.findAllByUserId(loginUserId).stream()
                .map(userItem -> UserItemResDto.entityToDto(userItem))
                .collect(Collectors.toList());
    }

    /**
     * 소유한 테마 상세 조회
     * @param userItemId
     * @return
     */
    @Transactional
    @Override
    public UserItemResDto findUserItem(Long userItemId) {
        log.info("[소유한 테마 상세 조회] 사용자가 선택한 소유테마 상세 조회 요청. userItemId : {}", userItemId);

        UserItem userItem = userItemRepository.findById(userItemId)
                .orElseThrow(() -> {
                    log.error("[소유한 테마 상세 조회] 테마를 찾을 수 없습니다.");
                    return new ResponseStatusException(HttpStatus.NOT_FOUND, "테마를 찾을 수 없습니다.");
                });

        // UserItem의 User와 loginUser가 동일한지 체크해야하나?
        if(loginUserIsSameWithOwner(userItem.getUser())) {
            log.error("[소유한 테마 상세 조회] 로그인 유저가 소유한 테마가 아닙니다.");
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "테마를 찾을 수 없습니다.");
        }

        log.info("[소유한 테마 상세 조회] 테마 상세 조회 완료.");
        return UserItemResDto.entityToDto(userItem);
    }

    /**
     * 소유한 테마 카테고리별 조회
     * @param itemType
     * @return
     */
    @Transactional
    @Override
    public List<UserItemResDto> findAllUserItemByType(ItemType itemType) {
        if(itemType == null)
            return findAllUserItem();
        else {
            Long loginUserId = getLoginUser().getUserId();

            log.info("[소유한 테마 카테고리별 조회] 사용자가 소유한 테메 조건별 조회");
            return userItemRepository.findAllByUserIdAndItemType(loginUserId, itemType).stream()
                    .map(userItem -> UserItemResDto.entityToDto(userItem))
                    .collect(Collectors.toList());
        }
    }

    /**
     * 소유한 테마 적용/해제하기
     * 로그인 사용자가 소유한 테마 중 선택한 테마를 적용/해제 합니다.
     * 기적용된 테마 번호(itemId)가 다를 경우 적용 / 같을 경우 해제
     * @param itemId
     * @return
     */
    @Transactional
    @Override
    public UserItemResDto updateUserItem(Long itemId) {


        return null;
    }

    /**
     * 소유하지 않은 테마 구매하기
     * @param itemId
     * @return
     */
    @Transactional
    @Override
    public UserItemResDto addUserItem(Long itemId) {
        User loginUser = getLoginUser();
        Long loginUserId = loginUser.getUserId();

        log.info("[테마 구매하기] 테마 구매 요청. userId : {}, itemId : {}", loginUserId, itemId);

        // 보유하고 있는 테마인지 확인
        UserItem userItem = userItemRepository.findUserItemByItemAndUser(itemId, loginUserId);
        // 보유하고 있으니 구매 불가
        if(userItem != null){
            // 에러날리는거 말고 그냥 구매만 안되게 하는게 맞는듯
            log.info("[테마 구매하기] 기소유한 테마는 구매할 수 없습니다.");
            return null;
        }

        // 보유하지 않았으니 구매 가능

        Item item = itemRepository.findItemByItemId(itemId)
                .orElseThrow(() -> {
                    log.error("[테마 구매하기] 테마를 찾을 수 없습니다.");
                    return new ResponseStatusException(HttpStatus.NOT_FOUND, "해당 테마를 찾을 수 없습니다.");
                });

        // 잔액 확인
        long newBalance = loginUser.getBalance() - item.getPrice();

        // 잔액 부족
        if(newBalance < 0){
            log.error("[테마 구매하기] 잔액이 부족해 구매할 수 없습니다.");
            return null;
        }

        // 소유물건이 20개인지 확인
        // 유저카운트 ++
//        if(loginUser.getItemCount >= 20) {
//            log.error("[테마 구매하기] 주머니가 가득차 구매할 수 없습니다.");
//            return null;
//        }

        log.info("[테마 구매하기] 테마 구매 가능. itemId : {}", item.getItemId());

        BankBook bankBook = BankBook.builder()
                .userId(loginUserId)
                .amount(item.getPrice())
                .date(LocalDate.now())
                .balance(newBalance)
                .transactionType(TransactionType.getTransactionType("구매"))
                .summary(item.getItemInfo())
                .build();

        bankBookRepository.save(bankBook);
        loginUser.updateBalance(newBalance);
//        loginUser.updateItemCnt(true);

        userRepository.save(loginUser); // 이거 하는게 맞지않나

        return UserItemResDto.entityToDto(userItem);
    }

    /**
     * 소유한 테마 판매하기
     * @param userItemId
     */
    @Transactional
    @Override
    public void deleteUserItem(Long userItemId) {
        log.info("[테마 판매하기] 소유한 테마 판매 요청. userItemId : {}", userItemId);

        UserItem userItem = userItemRepository.findById(userItemId)
                .orElseThrow(() -> {
                    log.error("[테마 판매하기] 테마를 찾을 수 없습니다.");
                    return new ResponseStatusException(HttpStatus.NOT_FOUND, "테마를 찾을 수 없습니다.");
                });

        // 로그인 유저와 테마 소유자가 동일한지 체크
        if(loginUserIsSameWithOwner(userItem.getUser())) {
            log.error("[테마 판매하기] 로그인 유저와 테마 소유자가 일치하지 않습니다. 판매 불가.");
            return;
        }

        User loginUser = getLoginUser();
        Long loginUserId = loginUser.getUserId();

        Long saleAmount = Math.round(userItem.getItem().getPrice() * 0.4);
        Long newBalance = loginUser.getBalance() + saleAmount;
        loginUser.updateBalance(newBalance);

        BankBook bankBook = BankBook.builder()
                .userId(loginUserId)
                .amount(saleAmount)
                .date(LocalDate.now())
                .balance(newBalance)
                .transactionType(TransactionType.getTransactionType("판매"))
                .summary(userItem.getItem().getItemInfo())
                .build();

        bankBookRepository.save(bankBook);
        userItemRepository.delete(userItem);
        userRepository.save(loginUser);

        log.info("[테마 판매하기] 판매 완료.");
    }

}
