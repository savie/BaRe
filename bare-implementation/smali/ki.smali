.class public final Lki;
.super Lpi;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lqt3;

.field public final e:I

.field public final f:Ljava/lang/Integer;

.field public final g:Ljava/lang/Integer;

.field public final h:Ljava/lang/Integer;

.field public final i:Z

.field public final j:Ljava/lang/Boolean;

.field public final k:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lqt3;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Boolean;ZI)V
    .locals 3

    .line 1
    and-int/lit8 v0, p12, 0x10

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p3, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p12, 0x20

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move-object p4, v1

    .line 12
    :cond_1
    and-int/lit16 v0, p12, 0x80

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    move-object p6, v1

    .line 17
    :cond_2
    and-int/lit16 v0, p12, 0x100

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    move-object p7, v1

    .line 22
    :cond_3
    and-int/lit16 v0, p12, 0x200

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    move-object p8, v1

    .line 27
    :cond_4
    and-int/lit16 v0, p12, 0x800

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    move p9, v2

    .line 33
    :cond_5
    and-int/lit16 v0, p12, 0x1000

    .line 34
    .line 35
    if-eqz v0, :cond_6

    .line 36
    .line 37
    move-object p10, v1

    .line 38
    :cond_6
    and-int/lit16 p12, p12, 0x2000

    .line 39
    .line 40
    if-eqz p12, :cond_7

    .line 41
    .line 42
    move p11, v2

    .line 43
    :cond_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    iput p1, p0, Lki;->a:I

    .line 47
    .line 48
    iput-object p2, p0, Lki;->b:Ljava/lang/String;

    .line 49
    .line 50
    iput-object p3, p0, Lki;->c:Ljava/lang/String;

    .line 51
    .line 52
    iput-object p4, p0, Lki;->d:Lqt3;

    .line 53
    .line 54
    iput p5, p0, Lki;->e:I

    .line 55
    .line 56
    iput-object p6, p0, Lki;->f:Ljava/lang/Integer;

    .line 57
    .line 58
    iput-object p7, p0, Lki;->g:Ljava/lang/Integer;

    .line 59
    .line 60
    iput-object p8, p0, Lki;->h:Ljava/lang/Integer;

    .line 61
    .line 62
    iput-boolean p9, p0, Lki;->i:Z

    .line 63
    .line 64
    iput-object p10, p0, Lki;->j:Ljava/lang/Boolean;

    .line 65
    .line 66
    iput-boolean p11, p0, Lki;->k:Z

    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget p0, p0, Lki;->a:I

    .line 2
    .line 3
    return p0
.end method
