Procedure paint(x,i:longint);
Begin
	If x>=4*n then exit;//�ýڵ㲻����
	C[x]:=I; s[x]:=I; rev[x]:=I;//c��ʾ�ýڵ��Ȩֵ,s��ʾ�������ֵ��revΪ�ӳ���Ϣ��
End;
Procedure pass(x:longint);
Begin
	If rev[x]=0 then exit;//�õ�û���ӳ���Ϣ
	Paint(l[x],rev[x]);//���󴫵�
	Paint(r[x],rev[x]);//���Ҵ���
	Rev[x]:=0;//�������
End;
Procedure updata(x:longint);
Begin
	S[x]:=min(s[l[x]],s[r[x]],c[x]);
//����ֻά�����ֵ�����ά����Сֵ�Ļ�Ҫ��ʼ�����нڵ�ֵΪ�ܴ������
End;
Procedure serarch(deep,l,r,x,y:longint);
Var mid:longint;
Begin
    Pass(deep);//���ʵ��Ľڵ�Ҫ���´����ӳ���Ϣ�����������һ��ʱ�ͻ�Error��
	If (l=x)and(r=y) then //�Ѿ��ҵ���Ҫ�������
		Begin
		Ans=max(ans,s[deep]);//����Ҫ������ֵ
		Exit;
		End;
	Mid:=(l+r)>>1;
	If y<=mid then search(deep*2,l,mid,x,y)//Ҫ������������
	Else if x>mid then search(deep*2+1,mid+1,r,x,y) //Ҫ����������ұ�
	Else begin
		Search(deep*2,l,mid,x,mid); //Ҫ�������������
		Search(deep*2+1,mid+1,r,mid+1,y);
		End;
End;
���⻹��һ��build(x,l,r)���������ҾͲ���׸���ˡ�