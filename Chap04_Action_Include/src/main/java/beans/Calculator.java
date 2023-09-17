/**
 * Java bean 규칙
 * 1. 멤버 변수마다 별도의 get/set 메소드가 존재해야 한다.
 * 2. get 메소드는 파라미터가 존재하지 않아야 한다.
 * 3. set 메소드는 반드시 하나 이상의 파라미터가 존재해야 한다.
 * 4. 빈즈 컴포넌트의 속성은 반드시 읽기 또는 쓰기가 가능해야 한다.
 * 5. 생성자는 파라미터가 존재하지 않아야 한다.
 */
package beans;

public class Calculator {
	
	public int sum (int a, int b) {
		return a + b;
		
	}

}
