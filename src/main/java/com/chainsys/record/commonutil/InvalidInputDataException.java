package com.chainsys.record.commonutil;

import com.chainsys.record.commonutil.Validator;
public class InvalidInputDataException extends Exception
{ 
    public InvalidInputDataException()
    {
    	super("The Input Data is not valid ");
    }
    public InvalidInputDataException(String message) {
    	super(message);
    }
}



