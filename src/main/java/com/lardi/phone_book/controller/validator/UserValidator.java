package com.lardi.phone_book.controller.validator;

import com.lardi.phone_book.model.dao.UserDao;
import com.lardi.phone_book.model.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Component
public class UserValidator implements Validator {
    @Autowired
    private UserDao userDao;

    private static final String USERNAME_REGEX="^[a-zA-Z]+$";
    private static final String PASSWORD_REGEX="^[a-zA-Z0-9]+$";
    private static final String FIO_REGEX="^[a-zA-Z]+$";

    private boolean checkWithRegExp(String str, String regex){
        Pattern p = Pattern.compile(regex);
        Matcher m = p.matcher(str);
        return m.matches();
    }

    @Override
    public void validate(Object o, Errors errors) {
        User user = (User) o;



        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "NotEmpty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fio", "NotEmpty");



        if (user.getUsername().length() < 3 || user.getUsername().length() > 32) {
            errors.rejectValue("username", "Size.userForm.username");
        }
        if (userDao.getByUsername(user.getUsername()) != null) {
            errors.rejectValue("username", "Duplicate.userForm.username");
        }
        if (!checkWithRegExp(user.getUsername(), USERNAME_REGEX)) {
            errors.rejectValue("username", "Symbols.userForm.username");
        }



        if (user.getPassword().length() < 5 || user.getPassword().length() > 32) {
            errors.rejectValue("password", "Size.userForm.password");
        }
        if (!checkWithRegExp(user.getPassword(), PASSWORD_REGEX)) {
            errors.rejectValue("password", "Symbols.userForm.password");
        }



        if (!user.getPasswordConfirm().equals(user.getPassword())) {
            errors.rejectValue("passwordConfirm", "Diff.userForm.passwordConfirm");
        }



        if (user.getFio().length() < 5 || user.getFio().length() > 32) {
            errors.rejectValue("fio", "Size.userForm.fio");
        }
        if (!checkWithRegExp(user.getFio(), FIO_REGEX)) {
            errors.rejectValue("fio", "Symbols.userForm.fio");
        }
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.equals(aClass);
    }

}
