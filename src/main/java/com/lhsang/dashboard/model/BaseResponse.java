package com.lhsang.dashboard.model;

import com.lhsang.helper.ResponseStatusEnum;

public class BaseResponse {
	private int status;
    private String message;
    private Object data;
    
	public int getStatus() {
		return status;
	}
	public void setStatus(ResponseStatusEnum statusEnum) {
		switch(statusEnum) {
		case SUCCESS:
			this.status = 200;
			break;
		case FAIL:
			this.status = 500;
			break;
		case NOT_FOUND:
			this.status = 404;
			break;
		case MISSING_PARAMS:
			this.status = 400;
			break;
		case UNAUTHORIZED:
			this.status = 401;
			break;
		default:
			this.status = 401;
			break;
		}
	}
	public String getMessage() {
		return this.message;
	}
	public void setMessage(ResponseStatusEnum statusEnum) {
		switch(statusEnum) {
		case SUCCESS:
			this.message = "Success";
			break;
		case FAIL:
			this.message = "Error";	
			break;
		case NOT_FOUND:
			this.message = "Not found";	
			break;
		case MISSING_PARAMS:
			this.message = "Bad request";	
			break;
		case UNAUTHORIZED:
			this.message = "Unauthorized";
			break;
		default:
			this.message = "Unauthorized";
			break;
		}
	}
	
	public void setMessageError(String message) {
		this.message = message;
	}
	
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}

}

