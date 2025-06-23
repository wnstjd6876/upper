package com.my.generic;

/*
    제네릭 클래스
 */
class Box<T> {
    private T value;                // 타입 파라미터


    public void setValue(T value) {
        this.value = value;
    }

    public T getValue() {
        return value;
    }
}

public class GenericTest2 {
    public static void main(String[] args) {
        Box<String> stringBox = new Box<>();
        stringBox.setValue("Hello");
        System.out.println(stringBox.getValue());

        Box<Integer> integerBox = new Box<>();
        integerBox.setValue(100);
        System.out.println(integerBox.getValue());
    }
}
