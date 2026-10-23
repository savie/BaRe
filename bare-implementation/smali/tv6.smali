.class public final Ltv6;
.super Ly0;


# instance fields
.field public final a:Lt0;

.field public final b:Lya;


# direct methods
.method public constructor <init>(Lv1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lv1;->C(I)Lb0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lt0;->x(Ljava/lang/Object;)Lt0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Ltv6;->a:Lt0;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Lv1;->C(I)Lb0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lya;->k(Ljava/lang/Object;)Lya;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Ltv6;->b:Lya;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lya;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lt0;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lt0;-><init>(J)V

    iput-object v0, p0, Ltv6;->a:Lt0;

    iput-object p1, p0, Ltv6;->b:Lya;

    return-void
.end method

.method public static final k(Ljava/lang/Object;)Ltv6;
    .locals 1

    .line 1
    instance-of v0, p0, Ltv6;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ltv6;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    if-eqz p0, :cond_1

    .line 9
    .line 10
    new-instance v0, Ltv6;

    .line 11
    .line 12
    invoke-static {p0}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0, p0}, Ltv6;-><init>(Lv1;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method


# virtual methods
.method public final d()Lq1;
    .locals 2

    .line 1
    new-instance v0, Lc0;

    .line 2
    .line 3
    invoke-direct {v0}, Lc0;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ltv6;->a:Lt0;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Ltv6;->b:Lya;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lc0;->a(Lb0;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Lt82;

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lv1;-><init>(Lc0;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lt82;->c:I

    .line 23
    .line 24
    return-object p0
.end method
