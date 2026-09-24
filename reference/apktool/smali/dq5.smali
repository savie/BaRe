.class public final Ldq5;
.super Lxp5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final d:Ldq5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldq5;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Short;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lh58;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ldq5;->d:Ldq5;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Short;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    check-cast p2, Lpw8;

    .line 8
    .line 9
    iget p1, p2, Lpw8;->L:I

    .line 10
    .line 11
    const-string p3, "write a number"

    .line 12
    .line 13
    invoke-virtual {p2, p3}, Lpw8;->l0(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-boolean p3, p2, Lcv3;->d:Z

    .line 17
    .line 18
    if-eqz p3, :cond_1

    .line 19
    .line 20
    iget-char p3, p2, Lpw8;->H:C

    .line 21
    .line 22
    iget v0, p2, Lpw8;->K:I

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x8

    .line 25
    .line 26
    if-lt v0, p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p2}, Lpw8;->u0()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p2, Lpw8;->I:[C

    .line 32
    .line 33
    iget v0, p2, Lpw8;->K:I

    .line 34
    .line 35
    add-int/lit8 v1, v0, 0x1

    .line 36
    .line 37
    iput v1, p2, Lpw8;->K:I

    .line 38
    .line 39
    aput-char p3, p1, v0

    .line 40
    .line 41
    invoke-static {p1, p0, v1}, Lup5;->e([CII)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    iget-object p1, p2, Lpw8;->I:[C

    .line 46
    .line 47
    add-int/lit8 v0, p0, 0x1

    .line 48
    .line 49
    iput v0, p2, Lpw8;->K:I

    .line 50
    .line 51
    aput-char p3, p1, p0

    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    iget p3, p2, Lpw8;->K:I

    .line 55
    .line 56
    add-int/lit8 p3, p3, 0x6

    .line 57
    .line 58
    if-lt p3, p1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p2}, Lpw8;->u0()V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object p1, p2, Lpw8;->I:[C

    .line 64
    .line 65
    iget p3, p2, Lpw8;->K:I

    .line 66
    .line 67
    invoke-static {p1, p0, p3}, Lup5;->e([CII)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    iput p0, p2, Lpw8;->K:I

    .line 72
    .line 73
    return-void
.end method
