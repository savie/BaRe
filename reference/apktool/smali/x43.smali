.class public final Lx43;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ls43;


# static fields
.field public static final b:Lx43;

.field public static final c:Lx43;


# instance fields
.field public final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx43;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lx43;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lx43;->b:Lx43;

    .line 8
    .line 9
    new-instance v0, Lx43;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lx43;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lx43;->c:Lx43;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lx43;->a:Z

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
    if-gez p2, :cond_0

    .line 15
    .line 16
    const/16 v0, 0x2d

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 19
    .line 20
    .line 21
    neg-int p2, p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v0, 0x2b

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 26
    .line 27
    .line 28
    :goto_0
    const v0, 0x36ee80

    .line 29
    .line 30
    .line 31
    div-int v0, p2, v0

    .line 32
    .line 33
    invoke-static {v0, p1}, Lg53;->a(ILjava/lang/StringBuilder;)V

    .line 34
    .line 35
    .line 36
    iget-boolean p0, p0, Lx43;->a:Z

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    const/16 p0, 0x3a

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 43
    .line 44
    .line 45
    :cond_1
    const p0, 0xea60

    .line 46
    .line 47
    .line 48
    div-int/2addr p2, p0

    .line 49
    mul-int/lit8 v0, v0, 0x3c

    .line 50
    .line 51
    sub-int/2addr p2, v0

    .line 52
    invoke-static {p2, p1}, Lg53;->a(ILjava/lang/StringBuilder;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final c()I
    .locals 0

    .line 1
    const/4 p0, 0x5

    .line 2
    return p0
.end method
