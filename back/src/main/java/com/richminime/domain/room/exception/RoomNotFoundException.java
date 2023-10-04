package com.richminime.domain.room.exception;

import com.richminime.global.exception.NotFoundException;

public class RoomNotFoundException extends NotFoundException {
    private final Long errorCode;
    public RoomNotFoundException(){
        this.errorCode = 200L;
    }
    public RoomNotFoundException(String message) {
        super(message);
        this.errorCode = 200L;
    }

    public RoomNotFoundException(String message, Long errorCode) {
        super(message);
        this.errorCode = errorCode;
    }
}
