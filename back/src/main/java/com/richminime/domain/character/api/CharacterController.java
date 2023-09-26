package com.richminime.domain.character.api;

import com.richminime.domain.character.dto.CharacterResDto;
import com.richminime.domain.character.service.CharacterService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/character")
@RequiredArgsConstructor
public class CharacterController {

    private final CharacterService characterService;
    @GetMapping
    public ResponseEntity<CharacterResDto> find(){
        return ResponseEntity.ok(characterService.find());
    }
    @PutMapping
    public ResponseEntity<CharacterResDto> update(@RequestBody Long clothingId){
        return ResponseEntity.ok((characterService.update(clothingId)));
    }

}
