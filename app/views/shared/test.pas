Program Test;
Uses sysutils;
var
  a, b, name :string;
  i: integer;
  t1, t2 :text;

begin
  writeln('test:');
  name:=DateTimeToStr(Now);
  name:=name+'.txt';
  assign (t1, 'questions.txt');
  assign (t2, name);
  reset(t1);
  rewrite(t2);
  for i:=1 to 19 do
    begin
      readln(t1, a);
      writeln(a);
      readln(b);
      writeln(t2, b);
    end;
  close(t1);
  close(t2);
end.