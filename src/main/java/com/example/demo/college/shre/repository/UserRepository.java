package com.example.demo.college.shre.repository;
import com.example.demo.college.shre.entity.User;
//import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository
public class UserRepository extends JpaRepository<User, Integer>{


}
