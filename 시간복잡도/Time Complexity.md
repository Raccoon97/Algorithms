# Time Complexity ( 시간 복잡도 )
### 효율적인 문제 해결법  
- 문제의 해답을 찾는 것도 중요하지만, 효율적인 방법으로 문제를 해결했는지도 중요하다.<br>
- 문제 해결을 위한 효율적인 방법을 찾는 것은, 시간 복잡도를 고려한다는 말이다.
- 시간 복잡도와 그것을 표기하기 위한 Big-O 표기법을 정리한다.

### 시간 복잡도
- 문제를 해결하기 위한 알고리즘을 코드로 구현할 때, 시간 복잡도를 고려한다는 것은 <br>
- " 입력값의 변화에 따라 연산을 실행할 때, 연산 횟수에 비해 시간이 얼마만큼 걸리는가? " 라는 말이다. <br>
- 효율적인 알고리즘을 구현한다는 것은, 입력값이 커짐에 따라 증가하는 시간의 비율을 최소화한 알고리즘을 구성했다는 것이다.
- 이 시간 복잡도는 주로 Big-O 표기법을 사용해 나타낸다.
<br><br><br>
# Big-O 표기법
### 시간 복잡도를 표기하는 방법
- Big-O( 빅 - 오 )  --> 상한 점근
- Big-Ω( 빅 - 오메가 )  --> 하한 점근
- Big-θ( 빅 - 세타 )  --> 상한 점근과 하한 점근의 평균
- 위 세 가지 표기법은 시간 복잡도를 각각 최악, 최선, 중간( 평균 )의 경우에 대하여 나타내는 방법이다.

### 가장 자주 사용되는 표기법
- Big-O 표기법은 최악의 경우를 고려하므로, 프로그램이 실행되는 과정에서 소요되는 최악의 시간까지 고려할 수 있기 때문이다.
- 프로그램이 실행되는 과정의 시간이 " 이 정도 시간까지 걸릴 수 있다 " 를 고려해야 그에 맞는 대응이 가능하다.

### 시간 복잡도 최선의 경우를 고려한 경우
- 최선의 경우만 고려해서 어디에서 문제가 발생했는지 파악하기 위해서는 로직의 많은 부분을 봐야 하므로 문제를 인지하는 데 많은 시간이 소요된다.

### 시간 복잡도 중간의 경우를 고려한 경우
- 최선의 경우를 고려한 것과 같은 고민을 하게 된다.

### 시간 복잡도 최악의 경우를 고려한 경우
- 최악의 경우가 발생하지 않기를 바라며 시간을 계산하는 것보다는, 최악의 경우도 고려하여 대비하는 것이 바람직하다.
- 이러한 이유로 다른 표기법보다 Big-O 표기법을 많이 사용한다.
- Big-O 표기법은 "입력값의 변화에 따라 연산을 실행할 때, 연산 횟수에 비해 시간이 얼마나 걸리는가? " 를 표기하는 방법이다.

### Big-O 표기법의 종류
- O(1)
- O(n)
- O(log n)
- O(n2)
- O(2n)

![](https://github.com/Raccoon97/Algorithms/blob/main/%EC%8B%9C%EA%B0%84%EB%B3%B5%EC%9E%A1%EB%8F%84/Img/Big-O-Complexity-Chart.png)

<br><br><br>

# O(1)
![](https://github.com/Raccoon97/Algorithms/blob/main/%EC%8B%9C%EA%B0%84%EB%B3%B5%EC%9E%A1%EB%8F%84/Img/O1.png)
- O(1) 은 일정한 복잡도( Constant Complexity ) 라고 하며, 입력값이 증가하더라도 시간이 늘어나지 않는다.
>- 입력값의 크기와 관계없이, 즉시 출력값을 얻어낼 수 있다. 
- O(1)의 시간 복잡도를 가진 알고리즘
```swift
func timeComplexity_0_1( _ arr: [Int], _ idx: Int ) -> Int {
    return arr[idx]
}

let arr: Array<Int> = [1, 2, 3, 4, 5]
let index: Int = 1
let result = timeComplexity_0_1(arr, index)
print(result)

// 이 알고리즘에선 입력값의 크기가 아무리 커져도 즉시 출력값을 얻어낼 수 있다.
// arr의 길이가 100만이라도 즉시 해당 index에 접근해 값을 반환할 수 있다.
```



# O(log n)
![](https://github.com/Raccoon97/Algorithms/blob/main/%EC%8B%9C%EA%B0%84%EB%B3%B5%EC%9E%A1%EB%8F%84/Img/Olog-n.png)
- O(log n) 은 로그 복잡도( Logarithmic Complexity ) 라고 하며, Big-O 표기법중 O(1) 다음으로 빠른 시간 복잡도를 가진다.
>- 알고리즘 실행 시간이 입력 크기의 로그에 비례하며, 경우의 수를 계속 절반으로 줄여나가며 정답을 찾는다.
- O(log n)의 시간 복잡도를 가진 알고리즘
```swift
func timeComplexity_0_log_n(_ n: Int) -> Int {
    var a = 0
    var i = n
    while i > 0 {
	a += i
	i /= 2
    }
}

// Binary Search Tree 참조
//// BST 에서는 원하는 값을 탐색할 때, 노드를 이동할 때마다 경우의 수가 절반으로 줄어든다.
```



# O(n)
![](https://github.com/Raccoon97/Algorithms/blob/main/%EC%8B%9C%EA%B0%84%EB%B3%B5%EC%9E%A1%EB%8F%84/Img/On.png)
- O(n) 은 선형 복잡도( Linear Complexity ) 라고 하며, 입력값이 증가함에 따라 시간 또한 같은 비율로 증가한다.
>- 입력값이 1일 때 1초의 시간이 걸리고, 입력값이 100일 때 100초가 걸리는 알고리즘은 O(n)의 시간 복잡도를 가진다. 
- O(n)의 시간 복잡도를 가진 알고리즘
```swift
func timeComplexity_0_n(_ n: Int) -> Int {
    for item in 0...n {
	// do something 1 second
    }
}

func timeComplexity_0_n_Two(_ n: Int) -> Int {
    for item in 0...2n {
	// do something 1 second
    }
}

// timeComplexity_0_n 함수에서는 입력값(n) 이 1 증가할 때마다 코드의 실행 시간이 1초씩 증가한다.
// timeComplexity_0_n_Two 함수에서는 입력값이 1 증가할 때마다 코드의 실행 시간이 2초씩 증가한다.
```


# O(n2)
![](https://github.com/Raccoon97/Algorithms/blob/main/%EC%8B%9C%EA%B0%84%EB%B3%B5%EC%9E%A1%EB%8F%84/Img/On2.png)
- O(n2) 은 2차 복잡도( Quadratic Complexity ) 라고 하며, 입력값이 증가함에 따라 시간이 n의 제곱수의 비율로 증가한다.
>- 입력값이 1일 때 1초의 시간이 걸리고, 입력값이 5일 때 25초가 걸리는 알고리즘은 O(n2)의 시간 복잡도를 가진다. 
- O(n2)의 시간 복잡도를 가진 알고리즘
```swift
func timeComplexity_O_quadratic(_ n: Int) {
    for i in 0...n {
        for j in 0...n {
	    // do something for 1 second
        }
    }
}

func timeComplexity_O_quadratic_Two(_ n: Int) {
    for i in 0...n{
        for j in 0...n {
	    for k in 0...n {
	        // do something for 1 second
	    }
        }
    }
}


// n의 제곱일 때 O(n2), n의 세제곱일 때 O(n3) n의 m제곱일 때 O(nm)
```




# O(2n)
![](https://github.com/Raccoon97/Algorithms/blob/main/%EC%8B%9C%EA%B0%84%EB%B3%B5%EC%9E%A1%EB%8F%84/Img/O2n.png)
- O(2n) 은 기하급수적 복잡도( Exponential Complexity ) 라고 하며, Big-O 표기법 중 가장 느린 시간 복잡도를 가진다.
>- 구현한 알고리즘의 시간 복잡도가 O(2n) 이라면 다른 접근 방식을 고민해보자..
- O(2n)의 시간 복잡도를 가진 알고리즘
```swift

func fibonacci(n : Int) {
    if n <= 1 {
        return 1
    }
    return fibonacci(n - 1) + fibonacci(n - 2)
}

// 재귀로 구현하는 피보나치 수열은 O(2n)의 시간 복잡도를 가진 대표적인 알고리즘이다.
```


