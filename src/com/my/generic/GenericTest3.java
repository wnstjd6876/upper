package com.my.generic;

/*
    제네릭 메서드
    리턴 타입 앞에 타입 파라미터를 정의
 */

class Util {
    public static <T> void printArray(T[] ary) {
        for (T item : ary) {
            System.out.println(item);
        }

    }

}


public class GenericTest3 {
    public static void main(String[] args) {
        String[] names = {"Kim", "Lee", "Park" };
        Integer[] numbers = {1, 2, 3, 4, 5};

        Util.printArray(names);
        Util.printArray(numbers);
    }
}
/*
    와일드 카드
    <?>     불특정 타입
    <? extends T>
    <? Super T>
 */




