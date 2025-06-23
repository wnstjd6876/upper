package com.my.generic;
/*
    제네릭은 클래스나 메서드를 선언할 때 사용하는 데이터 타입을 파라미트화 하여
    타입의 안정성과 재사용성을 높여준다. 동적 타입 결정

 */

import java.util.ArrayList;
import java.util.List;

public class GenericTest {
    public static void main(String[] args) {
//        List list = new ArrayList();    // low 타입: 타입 매개변수를 사용하지 않음
//        list.add("Hello");              //string
//        list.add(123);                  //number
//
//
//        String s = (String) list.get(1);        // 런타임 오류 발생

        // 제네릭 사용한 코드 - 타입 매개 변수 사용
        List<String> list2 = new ArrayList<>();
        list2.add("Hello");
        //list2.add(123);




        String s = list2.get(0);
        System.out.println(list2.get(0));
    }
}
