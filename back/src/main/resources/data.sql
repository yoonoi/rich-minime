

insert into users
(user_id, email, password, nickname, connected_id, organization_code, card_number, user_type, balance)
values
('100001', 'test@naver.com', '$2a$10$KWa2GxJjM79nA7lDzr.8mectx6knAbmwjftSN2..MDN6j/oTCRTaK', '테스트1', 'abc123', '0301', '1234567890123456', 'ROLE_USER', '1000'),
('100000', 'dd39@naver.com', '$2a$10$KWa2GxJjM79nA7lDzr.8mectx6knAbmwjftSN2..MDN6j/oTCRTaK', '관리자윤영', 'dd39', '0301', '1111222233334444', 'ROLE_ADMIN', '10000000');

insert into  clothing
(clothing_id, clothing_name, clothing_type, clothing_img, clothing_apply_img, clothing_info, price)
values ('100','공주룩', '파티', 'party_image.jpg', 'party_image_apply1.jpg', '파티나 특별한 날에 어울리는 공주룩 원피스', '2000'),
       ('101','싸피복', '일상', 'sample_pants.jpg', 'sample_pants_apply.jpg', '일상 생활에서 편안하게 착용 가능한 싸피 바지', '2500'),
       ('102','스튜어디스', '직업', 'work_shirt.jpg', 'work_shirt_apply.jpg', '항공 승무원을 위한 전용 스튜어디스 유니폼', '3000');

insert into user_clothing
(user_clothing_id, clothing_id, user_id)
values
    ('100000', '100', '100001'),
    ('100001', '101', '100001'),
    ('100002', '101', '100000');


insert into item
(item_id, item_name, item_type, item_img, item_info, price)
values
('100', '기본 벽지장판', '벽지장판', 'url', '가입시 기본으로 적용되는 벽지장판입니다.', '100'),
('101', '공주 벽지장판', '벽지장판', 'url', '공주 컨셉의 벽지장판입니다. 주희가 좋아하겠네요.', '200'),
('201', '요술램프', '가구', 'url', '요술램프입니다. 벽지, 장판은 제외입니다.', '500');

insert into user_item
(user_item_id, item_id, user_id)
values
('1000', '100', '100001'),
('1001', '100', '100000'),
('1002', '201', '100000');

insert into feedback
(feedback_id, feedback_type, content)
values
('101', '긍정피드백', '통장 지출 목록이 깨끗하잖아? 짝짝!'),
('102', '긍정피드백', '오! 이렇게 아꼈어? (박수 박수)'),
('103', '긍정피드백', '지출 줄이는 게 스킬이라면, 넌 거의 마스터야.'),
('104', '긍정피드백', '이대로만 하면 모아서 너 하고 싶은 거 할 수 있어!!!'),
('105', '긍정피드백', '네 저축 습관 주목받아야 해!'),
('106', '긍정피드백', '봐봐, 이대로라면 곧 저축 전문가!'),
('107', '긍정피드백', '이 속도로 가면, 미래의 백만장자 될지도?'),
('108', '긍정피드백', '이대로면 너의 통장은 무한 확장 중!'),
('109', '긍정피드백', '정말 계획적으로 쓰는 모습 멋져!'),
('110', '긍정피드백', '매번 이런 식이면, 통장이 널 웃으며 환영할 걸?'),
('111', '긍정피드백', '이 돈 모아서 어디로 가고 싶니? 꿈꾸던 여행지도 가까워져!'),
('112', '긍정피드백', '선생님? 저축법은 어디서 배우신 건가요?'),
('113', '긍정피드백', '선.생.님! 절약하는 꿀팁 가르쳐주세요~'),
('114', '긍정피드백', '지출 전에 한 번 더 생각한 거지? 대단해!'),
('115', '긍정피드백', '너는 돈을 아끼면서 사는구나. 정말 멋있다~'),
('116', '긍정피드백', '절약정신이 아주 훌륭한데? 나도 한 수 배우고 싶어!'),
('117', '긍정피드백', '들린다 들려~~ 통장에 돈이 한가득 쌓이는 소리가.'),
('118', '긍정피드백', '넌 현명한 소비습관을 가지고 있는 것 같아. 미래에 돈 걱정은 안 해도 되겠다.'),
('119', '긍정피드백', '착실하게 아끼며 살고 있구나. 나는 네가 정말로 자랑스러워!'),
('120', '긍정피드백', '사고 싶은 것을 참는 건 쉽지 않은데 생각보다 잘 해내고 있구나.'),
('121', '긍정피드백', '어제는 많이 절약했네? 잘했어. 네가 돈을 모아서 하고 싶은게 뭔지 궁금해~'),
('122', '긍정피드백', '소비 욕망을 참고 인내하는 모습 참 대단한 것 같아.'),
('123', '긍정피드백', '이렇게 계속 절약하다 보면 언젠가 뿌듯함을 느낄 때가 올 거야. 힘내!'),
('124', '긍정피드백', '네가 이렇게 착실하게 돈을 아낄 수 있을 줄 몰랐어. 내가 칭찬해줄게! 최고!'),
('125', '긍정피드백', '올 한해 절약왕 대상을 드립니다!'),
('126', '긍정피드백', '전날보다 소비를 적게 했구나! 너 정말 야물딱지다!'),
('127', '긍정피드백', '어제는 평소보다 돈을 조금 썼구나! 너 정말 알뜰하다!'),
('128', '긍정피드백', '요즘 절약을 잘하고 있구나. 아주 훌륭해!'),
('129', '긍정피드백', '요즘 소비패턴이 매우 좋아졌어 앞으로도 계속 유지해보자.'),
('130', '긍정피드백', '엊그제에 비해 어제는 상대적으로 절약을 했네!'),
('131', '긍정피드백', '너 발전했구나 !!!'),
('132', '긍정피드백', '이제 정신차린거야??'),
('133', '긍정피드백', '그래 절약해서 나쁠게 없어'),
('134', '긍정피드백', '내가 거지라도 너만 행복하다면 난 괜찮아. . .'),
('135', '긍정피드백', '넌 최고의 절약가야'),
('136', '긍정피드백', '오, 이 통장 내역 뭐야? 저축마법사?'),
('137', '긍정피드백', '헐, 넌 어떻게 이렇게 잘 아껴?!'),
('138', '긍정피드백', '뭐야, 이 속도면 통장이 곧 무한모드 들어가겠네!'),
('139', '긍정피드백', '아껴서 얻는 건 뭘까? 너의 꿈을 위한 여유!'),
('140', '긍정피드백', '이건 뭐... 저축의 여신님이신가요?'),
('141', '긍정피드백', '오늘의 MVP는 너의 통장! 클라쓰 있어~'),
('142', '긍정피드백', '누가 너에게 이런 저축 스킬을...? 아, 너 자신이군!'),
('143', '긍정피드백', '선생님, 이렇게 아끼는 비법 좀 전수해주세요~'),
('144', '긍정피드백', '너무 잘하고 있어! 통장이 널 행복하게 바라보고 있어.'),
('145', '긍정피드백', '돈 지출 전에 마음의 스톱! 넌 진짜 대단한 것 같아.'),
('146', '긍정피드백', '저축의 달인! 통장 지출 목록이 깨끗하잖아?'),
('147', '긍정피드백', '와, 이렇게 아끼는 거 대단해! (박수 박수)'),
('148', '긍정피드백', '지출을 줄이는 건 정말 중요한 미래 투자야.'),
('149', '긍정피드백', '네 저축 습관은 정말 주목받아야 해!'),
('150', '긍정피드백', '모아서 너 하고 싶은 걸 이루는 게 얼마나 멋진 일일까요!'),
('151', '긍정피드백', '봐봐, 이대로라면 곧 저축 전문가!'),
('152', '긍정피드백', '이 속도로 가면 곧 미래의 백만장자 될지도?'),
('153', '긍정피드백', '통장이 무한 확장 중인 것 같아!'),
('154', '긍정피드백', '계획적인 소비 모습 멋져요!'),
('155', '긍정피드백', '매번 이런 식이면 통장이 널 웃으며 환영할 거예요.'),
('156', '긍정피드백', '너의 돈 모아서 어디로 가고 싶은데요?'),
('157', '긍정피드백', '선생님? 네 저축법은 어디서 배우셨나요?'),
('158', '긍정피드백', '선.생.님! 절약하는 꿀팁 가르쳐주세요~'),
('159', '긍정피드백', '지출 전에 한 번 더 생각하고 결정하는 거 진짜 대단하네요!'),
('160', '긍정피드백', '돈을 아끼면서 살다 보니 정말 멋지게 적립되네요.'),
('161', '긍정피드백', '절약 정신이 아주 훌륭한데요? 배우고 싶어요!'),
('162', '긍정피드백', '들린다 들려~~ 통장에 돈이 한가득 쌓이는 소리가 좋네요.'),
('163', '긍정피드백', '너의 현명한 소비 습관은 미래에 돈 걱정 안 해도 되겠어요.'),
('164', '긍정피드백', '착실하게 돈을 아끼면서 살고 계시네요. 자랑스럽습니다!'),
('165', '긍정피드백', '사고 싶은 걸 참는 건 어려운데, 잘 해내고 계시네요.'),
('166', '긍정피드백', '이런 식으로 계속 절약하다 보면 언젠가 뿌듯함을 느낄 거예요. 힘내세요!'),
('167', '긍정피드백', '너무 잘 아끼고 계시네요. 제가 칭찬해줄게요! 최고에요!'),
('168', '긍정피드백', '올 한해 절약왕 대상은 여기 있어요!'),
('169', '긍정피드백', '전날보다 소비를 적게 하다니! 정말 대단하시네요.'),
('170', '긍정피드백', '어제는 평소보다 돈을 조금 쓰셨군요! 야물딱지!'),
('171', '긍정피드백', '요즘 절약 습관이 매우 좋아졌어요. 계속 유지해보세요.'),
('172', '긍정피드백', '엊그제에 비해 어제는 상대적으로 절약을 했네요!'),
('173', '긍정피드백', '너 발전 중이에요! 정말 대단해요!'),
('174', '긍정피드백', '이제 정신 차리셨어요? 절약하면 좋은 일 있을 거에요.'),
('175', '긍정피드백', '그래도 절약해서 나쁠 게 없어요!'),
('176', '긍정피드백', '내가 거지라도 너만 행복하다면 난 괜찮아요...'),
('177', '긍정피드백', '넌 최고의 절약가에요!'),
('178', '긍정피드백', '이 통장 내역은 뭐야? 저축의 마법사?'),
('179', '긍정피드백', '헐, 어떻게 이렇게 잘 아껴요?!'),
('180', '긍정피드백', '뭐야, 이 속도면 통장이 곧 무한모드 들어가겠네요!'),
('181', '긍정피드백', '아껴서 얻는 건 뭘까요? 너의 꿈을 위한 여유!'),
('182', '긍정피드백', '이건 뭐... 저축의 여신님이신가요?'),
('183', '긍정피드백', '오늘의 MVP는 통장이네요! 클라쓰 있어~'),
('184', '긍정피드백', '누가 너에게 이런 저축 스킬을 가르쳐줬어요?'),
('185', '긍정피드백', '선생님, 이렇게 아끼는 비법 좀 전수해주세요~'),
('186', '긍정피드백', '너무 잘하고 있어요! 통장이 널 행복하게 바라보고 있어요.'),
('187', '긍정피드백', '돈 지출 전에 마음의 스톱! 넌 진짜 대단한 거 같아요.'),
('188', '긍정피드백', '이대로만 하면 통장이 미래에도 웃겠어!'),
('189', '긍정피드백', '지출을 줄이는 미래 투자, 너 정말 잘하고 있어!'),
('190', '긍정피드백', '돈 모아서 네 꿈을 이루는 게 멋져!'),
('191', '긍정피드백', '네 저축 습관을 주목받을 때가 올 거야!'),
('192', '긍정피드백', '너의 통장은 계속해서 무한 확장 중이야!'),
('193', '긍정피드백', '돈을 아끼면서 살면 어디든 갈 수 있어!'),
('194', '긍정피드백', '통장이 널 행복하게 바라보고 있어요!'),
('195', '긍정피드백', '돈 모으는 습관으로 백만장자 목표를 향해!'),
('196', '긍정피드백', '정말 계획적으로 쓰는 모습이 멋져요!'),
('197', '긍정피드백', '뿌듯한 미래를 위해 지출을 줄이는 게 탁월해요!'),
('198', '긍정피드백', '네 저축 스킬은 정말 대단하고 인상적이에요!'),
('199', '긍정피드백', '이 세계에서 거지였던 내가 현실에선 백만장자?'),
('200', '긍정피드백', '어머... 이제 좀 아낄 기미가 보이는구나!'),
('201', '긍정피드백', '전날보다 덜 썼어! 힘내보자구!'),
('202', '긍정피드백', '아낀 돈 == 미래의 자산'),
('203', '긍정피드백', '금연하니? 헤어졌니? 다이어트하니? 좀 덜 썼네...'),
('204', '긍정피드백', '이대로만 가면 좋겠어요 :)'),
('601', '부정피드백', '통장 잔고 봐봐. 우냐?'),
('602', '부정피드백', '제발 멈춰...'),
('603', '부정피드백', '또 많이 썼어? 정신 차려.'),
('604', '부정피드백', '이거 보면 망한 거임.'),
('605', '부정피드백', '요즘 금리 올랐는데 너 월급은? 이대로 쓸래?'),
('606', '부정피드백', '돈 좀 아끼라고 했잖아?'),
('607', '부정피드백', '이제 좀 절약해 볼 생각이야?'),
('608', '부정피드백', '이대로면 빚만 키울 것 같은데?'),
('609', '부정피드백', '정말 생각 없이 쓰는 구나.'),
('610', '부정피드백', '매번 이런 식이면 문제 생길 것 같은데?'),
('611', '부정피드백', '이 돈이면 모아서 여행 가겠는데.'),
('612', '부정피드백', '선생님??? 이 금액은 뭐죠? 계획적인 소비 모르시나요?'),
('613', '부정피드백', '선.생.님?~ 한도라는 게 있어요 ^^'),
('614', '부정피드백', '결제하기 전에 생각은 해봤니?'),
('615', '부정피드백', '절약좀 하고 살아라…이 인간아!'),
('616', '부정피드백', '네가 돈 많이 쓰면 나야 좋은데 이렇게 막 써도 괜찮은 거 맞아?'),
('617', '부정피드백', '펑펑 쓰는 거 보니 통장에 돈 많나 보네. 부럽다~~'),
('618', '부정피드백', '어제 평소보다 좀 많이 소비했네? 네가 여유롭다면 뭐 괜찮겠지…는 무슨 절약 좀 해.'),
('619', '부정피드백', '도대체 뭘 샀길래 이렇게 많이 쓴 거야? 나한테도 좀 보여줘~'),
('620', '부정피드백', '들린다 들려~~ 흥청망청 돈 쓰는 소리가.'),
('621', '부정피드백', '내가 마술 하나 보여줄까? 통장 잔고가 사라지는 마술! 어라, 네가 먼저 해버렸네.'),
('622', '부정피드백', '어제도 꽤 썼구나? 네가 재력이 있다면 이렇게 소비해도 괜찮겠지만 말이야. 아니라면..당장 절약해.'),
('623', '부정피드백', '어제 지출이 상당히 많은데 네 통장 정말 괜찮긴 하니?'),
('624', '부정피드백', '친구야, 네 사전에 절약이란 단어는 없나 봐?'),
('625', '부정피드백', '최근들어 돈을 점점 많이 쓰는구나. 좋은 일이 있나보다? 그래도 적당히 써야지?'),
('626', '부정피드백', '사치가 심하구나! 소비를 줄일 필요가 있어 보여.'),
('627', '부정피드백', '로또라도 당첨됐니? 요즘 낭비가 왜이리 심하니?'),
('628', '부정피드백', '요즘 과소비를 하는 것 같아 걱정이야..'),
('629', '부정피드백', '어제는 평소보다 돈을 많이 쓴 것 같네. 오늘은 절약을 해보는게 어떨까?'),
('630', '부정피드백', '너 돈 많냐?'),
('631', '부정피드백', '나라도 부자가 돼서 다행이야'),
('632', '부정피드백', '소비가 과하다고 생각하지 않니?'),
('633', '부정피드백', '돈 좀 적당히 써'),
('634', '부정피드백', '현실에선 거지인 니가 이세계에선 부자~~~~'),
('635', '부정피드백', '너 덕분에 내가 살맛난다야'),
('636', '부정피드백', '이 통장 내역... 무슨 일 있었어?'),
('637', '부정피드백', '또? 진짜 이젠 조금만 아껴봐.'),
('638', '부정피드백', '통장이 소리내서 울고 있어...'),
('639', '부정피드백', '쓸 때마다 숨곳이 있나 보지?'),
('640', '부정피드백', '어휴, 또 지출 대박이네. 조절 좀!'),
('641', '부정피드백', '뭔가 구매 전에 스톱! 생각 좀 해봐야겠다.'),
('642', '부정피드백', '이런 속도면, 통장이 곧 슬슬 퇴사할 것 같아...'),
('643', '부정피드백', '돈도 휴식 필요해! 쉬게 해줘!'),
('644', '부정피드백', '이 돈으로 뭘 하려고 했는지 기억나?'),
('645', '부정피드백', '선생님, 이 금액... 계획서에 있었나요?'),
('646', '부정피드백', '돈은 쓰는 건 중요하지만, 절약도 생각해봐야 해.'),
('647', '부정피드백', '잔고가 줄면 불안해지지 않아?'),
('648', '부정피드백', '소비 패턴을 조금 바꿔봐. 미래를 위해.'),
('649', '부정피드백', '오늘은 소비를 자제해보는 건 어때?'),
('650', '부정피드백', '돈을 모으는 습관을 들이면 좋을 거야.'),
('651', '부정피드백', '미래를 위한 목표를 세우면 지출을 조절하기 쉬워질 거야.'),
('652', '부정피드백', '한 번 소비하기 전에 심호흡을 해보는 건 어때요?'),
('653', '부정피드백', '목표를 가지고 돈을 모으면 미래가 밝아질 거야.'),
('654', '부정피드백', '지출 내역을 분석해봐서 무엇을 줄일 수 있을지 고민해봐.'),
('655', '부정피드백', '돈을 효율적으로 운용하는 방법을 찾아보자.'),
('656', '부정피드백', '소비의 이유와 필요성을 다시 생각해봐.'),
('657', '부정피드백', '미래를 위해 저축을 시작해보는 건 어때요?'),
('658', '부정피드백', '목표 달성을 위한 노력이 돈을 절약하는 데 도움이 될 거야.'),
('659', '부정피드백', '소비할 때 항상 "왜?"라는 질문을 던져봐.'),
('660', '부정피드백', '지출 내역을 기록해보면 어디서 돈을 절약할 수 있을지 알게 될 거야.'),
('661', '부정피드백', '절약 습관을 들이면 재정 상황이 나아질 거야.'),
('662', '부정피드백', '돈을 모아서 미래에 더 큰 즐거움을 누릴 수 있어.'),
('663', '부정피드백', '소비를 줄이면 금융 안정을 가져다줄 거야.'),
('664', '부정피드백', '돈을 아껴서 미래에 편안한 삶을 누리자.'),
('665', '부정피드백', '지출을 줄이면 더 많은 것을 얻을 수 있어.'),
('666', '부정피드백', '돈을 효율적으로 사용하면 더 많은 목표를 달성할 수 있어.'),
('667', '부정피드백', '소비 습관을 바꾸면 미래를 위한 투자가 가능해져.'),
('668', '부정피드백', '돈을 아껴서 더 나은 미래가 기다린다.'),
('669', '부정피드백', '목표를 위해 조금만 더 아껴보자.'),
('670', '부정피드백', '재정 상황을 개선하려면 소비 습관을 조절해야 해.'),
('671', '부정피드백', '돈을 모으면 더 많은 가능성이 열릴 거야.'),
('672', '부정피드백', '미래를 위해 지출을 줄여보는 건 어때요?'),
('673', '부정피드백', '돈을 아껴서 더 많은 것을 얻을 수 있어.'),
('674', '부정피드백', '목표를 위해 소비를 자제하면 미래가 밝아질 거야.'),
('675', '부정피드백', '돈을 모으는 습관을 들이면 재정 상황이 나아질 거야.'),
('676', '부정피드백', '소비 습관을 바꾸면 더 나은 미래가 기다릴 거야.'),
('677', '부정피드백', '돈을 아껴서 더 큰 목표를 향해 나아가보자.'),
('678', '부정피드백', '미래에 대비해서 소비를 조금 더 절약해봐.'),
('679', '부정피드백', '목표를 향한 노력으로 소비를 절약하면 미래가 밝아질 거야.'),
('680', '부정피드백', '그렇게 낭비할 바에 차라리 부모님께 효도를 하는게 어떻겠니?'),
('681', '부정피드백', '사람은 소비생활을 해야 살아요, 그렇지만 조금 더 현명하게 쓰면 좋겠어요.'),
('682', '부정피드백', '소비에는 즐거움이 있지만, 절약도 중요한 부분이에요.'),
('683', '부정피드백', '통장 잔고를 키우면 미래에 더 큰 자유를 누릴 수 있어요.'),
('684', '부정피드백', '소비를 조금 더 계획적으로 하면 재정 상황이 개선될 거예요.'),
('685', '부정피드백', '돈을 아껴서 더 큰 목표를 향해 나아가요.'),
('686', '부정피드백', '재정 상황을 개선하려면 소비를 줄이는 것이 중요해.'),
('687', '부정피드백', '재정 상황을 개선하기 위해 소비 습관을 변화시켜보자.'),
('688', '부정피드백', '목표를 향한 첫 걸음은 지출을 자제하는 것부터 시작해.'),
('689', '부정피드백', '돈을 모으는 습관을 들이면 미래가 밝아질 거야.'),
('690', '부정피드백', '소비 습관을 바꾸면 더 나은 미래가 기다릴 거야.'),
('691', '부정피드백', '돈을 아껴서 더 큰 목표를 향해 나아가보자.'),
('692', '부정피드백', '미래에 대비해서 소비를 조금 더 절약해봐.'),
('693', '부정피드백', '목표를 향한 노력으로 소비를 절약하면 미래가 밝아질 거야.'),
('694', '부정피드백', '그렇게 낭비할 바에 차라리 부모님께 효도를 하는게 어떻겠니?'),
('695', '부정피드백', '사람은 소비생활을 해야 살아요, 그렇지만 조금 더 현명하게 쓰면 좋겠어요.'),
('696', '부정피드백', '소비에는 즐거움이 있지만, 절약도 중요한 부분이에요.'),
('697', '부정피드백', '통장 잔고를 키우면 미래에 더 큰 자유를 누릴 수 있어요.'),
('698', '부정피드백', '소비를 조금 더 계획적으로 하면 재정 상황이 개선될 거예요.'),
('699', '부정피드백', '돈을 아끼면 미래에 더 큰 목표를 달성할 수 있어요.'),
('700', '부정피드백', '마이너스 통장 만들 생각이구나?'),
('701', '부정피드백', '그 돈... 부디 좋은 곳에 쓴 것이길 바라...'),
('702', '부정피드백', '돈을 막 쓰는걸 보아하니 어디 이사라도 가시나요?'),
('703', '부정피드백', '미래를 생각해서 소비를 줄여보는 건 어떨까요?'),
('704', '부정피드백', '어제 용돈 받았니? 꽤 썼네...');


insert into bank_book
(bank_book_id, amount, balance, date, summary, transaction_type, user_id)
values
    ('1000', '2000', '48000', '2023-09-26', '파티나 특별한 날에 어울리는 공주룩 원피스', '구매', '100001'),
    ('1001', '2500', '45500', '2023-09-26', '일상 생활에서 편안하게 착용 가능한 싸피 바지', '구매', '100001'),
    ('1002', '2500', '47500', '2023-09-26', '항공 승무원을 위한 전용 스튜어디스 유니폼', '구매', '100000');


