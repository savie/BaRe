package defpackage;
public final class ds1 implements bt3 {
 public final gs1 a; public final boolean b;
 public ds1(gs1 a, boolean b){this.a=a;this.b=b;}
 @Override public Object invoke(){String who=b?"reader":"writer";StringBuilder sb=new StringBuilder();sb.append("Timed out attempting to acquire a ").append(who).append(" connection.\n\nWriter pool:\n");a.b.d(sb);sb.append("Reader pool:\n");a.a.d(sb);ly8.P(5,sb.toString());return null;}
}