package com.sriram.my.todo.app.repository;

import com.sriram.my.todo.app.model.Todo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TodoRepository extends JpaRepository<Todo, Long> {
}