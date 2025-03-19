package vn.hoidanit.laptopshop.service;

import org.springframework.stereotype.Service;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;

import java.util.List;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void saveUser(User user) {
        this.userRepository.save(user);
    }

    public List<User> findAllUsersByEmail(String email) {
        return userRepository.findAllByEmail(email);
    }

    public User findFirstUserByEmail(String email) {
        return userRepository.findFirstByEmail(email);
    }

    public void handlerUserService(User user) {
        this.userRepository.save(user);
    }

    public List<User> findAllUsers() {
        return userRepository.findAll();
    }

    public void deleteUserById(long id) {
        this.userRepository.deleteById(id);
    }
}
