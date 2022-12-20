class TwoNum:
    def GetNum(self):
        self.__x = int(input("Enter value of x : "))
        self.__y = int(input("Enter value of y : "))

    def PutNum(self):
        print("value of x = ", self.__x,"value of y = ", self.__y, )

    def Add(self,T):
        R=TwoNum()
        R.__x=self.__x+T.__x
        R.__y=self.__y+T.__y
        return R

obj1 = TwoNum()
obj2 = TwoNum()
print("Enter values of object 1 ")
obj1.GetNum()
print("Enter values of object 2 ")
obj2.GetNum()
obj3 = obj1.Add(obj2)
print("Values of object 1 ")
obj1.PutNum()
print("Values of object 2 ")
obj2.PutNum()
print("Values of object 3 (sum object) ")
obj3.PutNum()