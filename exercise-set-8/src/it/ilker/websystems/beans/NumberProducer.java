package it.ilker.websystems.beans;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class NumberProducer {
	private List<Integer> numbers = new ArrayList<Integer>();
	private Random random = new Random();


	public void setNumbers() {
		for(int i=0; i<5; i++) {
			this.numbers.add(random.nextInt(90));
		}
	}
	
	public List<Integer> getNumbers() {
		this.setNumbers();
		return this.numbers;
	}
	
	public Integer getFirst() {
		return numbers.get(0);
	}
	
	public Integer getSecond() {
		return numbers.get(1);
	}
	
	public Integer getThird() {
		return numbers.get(2);
	}
	
	public Integer getFourth() {
		return numbers.get(3);
	}
	
	public Integer getFifth() {
		return numbers.get(4);
	}
}
