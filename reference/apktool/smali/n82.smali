.class public final Ln82;
.super Lq1;


# static fields
.field public static final a:Ln82;

.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln82;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ln82;->a:Ln82;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    sput-object v0, Ln82;->b:[B

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final hashCode()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final k(Lq1;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Ln82;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x1

    .line 8
    return p0
.end method

.method public final l(Lm1;Z)V
    .locals 1

    .line 1
    const/4 p0, 0x5

    .line 2
    sget-object v0, Ln82;->b:[B

    .line 3
    .line 4
    invoke-virtual {p1, p0, p2, v0}, Lm1;->k(IZ[B)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final o()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final p(Z)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-static {p0, p1}, Lm1;->d(IZ)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "NULL"

    .line 2
    .line 3
    return-object p0
.end method
