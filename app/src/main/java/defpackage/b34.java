package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b34 {
    public double a;
    public double b;
    public double c;
    public int d;

    public b34(int i) {
        a(i);
    }

    public final void a(int i) {
        this.d = i;
        en8 en8Var = en8.k;
        int i2 = i & 255;
        double dY = z85.y((16711680 & i) >> 16);
        double dY2 = z85.y((65280 & i) >> 8);
        double dY3 = z85.y(i2);
        double d = (0.18051042d * dY3) + (0.35762064d * dY2) + (0.41233895d * dY);
        double d2 = (0.0722d * dY3) + (0.7152d * dY2) + (0.2126d * dY);
        double d3 = (dY3 * 0.95034478d) + (dY2 * 0.11916382d) + (dY * 0.01932141d);
        double[][] dArr = xx3.a;
        double[] dArr2 = dArr[0];
        double d4 = (dArr2[2] * d3) + (dArr2[1] * d2) + (dArr2[0] * d);
        double[] dArr3 = dArr[1];
        double d5 = (dArr3[2] * d3) + (dArr3[1] * d2) + (dArr3[0] * d);
        double[] dArr4 = dArr[2];
        double d6 = (d3 * dArr4[2]) + (d2 * dArr4[1]) + (d * dArr4[0]);
        double[] dArr5 = en8Var.g;
        double d7 = en8Var.i;
        double d8 = en8Var.d;
        double d9 = en8Var.a;
        double d10 = dArr5[0] * d4;
        double d11 = dArr5[1] * d5;
        double d12 = dArr5[2] * d6;
        double d13 = en8Var.h;
        double dPow = Math.pow((Math.abs(d10) * d13) / 100.0d, 0.42d);
        double dPow2 = Math.pow((Math.abs(d11) * d13) / 100.0d, 0.42d);
        double dPow3 = Math.pow((Math.abs(d12) * d13) / 100.0d, 0.42d);
        double dSignum = ((Math.signum(d10) * 400.0d) * dPow) / (dPow + 27.13d);
        double dSignum2 = ((Math.signum(d11) * 400.0d) * dPow2) / (dPow2 + 27.13d);
        double dSignum3 = ((Math.signum(d12) * 400.0d) * dPow3) / (dPow3 + 27.13d);
        double d14 = ((((-12.0d) * dSignum2) + (dSignum * 11.0d)) + dSignum3) / 11.0d;
        double d15 = ((dSignum + dSignum2) - (dSignum3 * 2.0d)) / 9.0d;
        double d16 = dSignum2 * 20.0d;
        double d17 = ((21.0d * dSignum3) + ((dSignum * 20.0d) + d16)) / 20.0d;
        double d18 = (((dSignum * 40.0d) + d16) + dSignum3) / 20.0d;
        double degrees = Math.toDegrees(Math.atan2(d15, d14));
        if (degrees < 0.0d) {
            degrees += 360.0d;
        } else if (degrees >= 360.0d) {
            degrees -= 360.0d;
        }
        double radians = Math.toRadians(degrees);
        double dPow4 = (Math.pow((d18 * en8Var.b) / d9, en8Var.j * d8) * 100.0d) / 100.0d;
        Math.sqrt(dPow4);
        double d19 = d9 + 4.0d;
        double dPow5 = Math.pow((Math.hypot(d14, d15) * (((((Math.cos(Math.toRadians(degrees < 20.14d ? degrees + 360.0d : degrees) + 2.0d) + 3.8d) * 0.25d) * 3846.153846153846d) * en8Var.e) * en8Var.c)) / (d17 + 0.305d), 0.9d) * Math.pow(1.64d - Math.pow(0.29d, en8Var.f), 0.73d);
        double dSqrt = Math.sqrt(dPow4) * dPow5;
        Math.sqrt((dPow5 * d8) / d19);
        Math.log1p(dSqrt * d7 * 0.0228d);
        Math.cos(radians);
        Math.sin(radians);
        this.a = degrees;
        this.b = dSqrt;
        double d20 = cy0.C(new double[]{z85.y((i >> 16) & 255), z85.y((i >> 8) & 255), z85.y(i2)}, z85.a)[1] / 100.0d;
        this.c = ((d20 > 0.008856451679035631d ? Math.pow(d20, 0.3333333333333333d) : ((d20 * 903.2962962962963d) + 16.0d) / 116.0d) * 116.0d) - 16.0d;
    }
}
