.class public final Lp43;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ls43;


# static fields
.field public static final b:Lp43;

.field public static final c:Lp43;

.field public static final d:Lp43;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp43;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lp43;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lp43;->b:Lp43;

    .line 8
    .line 9
    new-instance v0, Lp43;

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-direct {v0, v1}, Lp43;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lp43;->c:Lp43;

    .line 16
    .line 17
    new-instance v0, Lp43;

    .line 18
    .line 19
    const/4 v1, 0x6

    .line 20
    invoke-direct {v0, v1}, Lp43;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lp43;->d:Lp43;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lp43;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V
    .locals 2

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    add-int/2addr p2, v0

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    const-string p0, "Z"

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    if-gez p2, :cond_1

    .line 23
    .line 24
    const/16 v0, 0x2d

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 27
    .line 28
    .line 29
    neg-int p2, p2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/16 v0, 0x2b

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 34
    .line 35
    .line 36
    :goto_0
    const v0, 0x36ee80

    .line 37
    .line 38
    .line 39
    div-int v0, p2, v0

    .line 40
    .line 41
    invoke-static {v0, p1}, Lg53;->a(ILjava/lang/StringBuilder;)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x5

    .line 45
    iget p0, p0, Lp43;->a:I

    .line 46
    .line 47
    if-ge p0, v1, :cond_2

    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    const/4 v1, 0x6

    .line 51
    if-ne p0, v1, :cond_3

    .line 52
    .line 53
    const/16 p0, 0x3a

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 56
    .line 57
    .line 58
    :cond_3
    const p0, 0xea60

    .line 59
    .line 60
    .line 61
    div-int/2addr p2, p0

    .line 62
    mul-int/lit8 v0, v0, 0x3c

    .line 63
    .line 64
    sub-int/2addr p2, v0

    .line 65
    invoke-static {p2, p1}, Lg53;->a(ILjava/lang/StringBuilder;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final c()I
    .locals 0

    .line 1
    iget p0, p0, Lp43;->a:I

    .line 2
    .line 3
    return p0
.end method
