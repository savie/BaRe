.class public final Lij6$a;
.super Lfw0$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lij6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfw0$a<",
        "Lij6$a;",
        "Lij6;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfw0$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic A(ZLij6;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lij6;->i(Lij6;Z)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic B(Ljava/lang/Iterable;Lij6;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lij6;->h(Lij6;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic x(ZLij6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lij6$a;->A(ZLij6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(Ljava/lang/Iterable;Lij6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lij6$a;->B(Ljava/lang/Iterable;Lij6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public C(Ljava/lang/Iterable;)Lij6$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lvh2$a;",
            ">;)",
            "Lij6$a;"
        }
    .end annotation

    .line 1
    const-string v0, "objects"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lv02;

    .line 9
    .line 10
    const/4 v2, 0x6

    .line 11
    invoke-direct {v1, p1, v2}, Lv02;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public z(Z)Lij6$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lqh2;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, v2, p1}, Lqh2;-><init>(IZ)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
