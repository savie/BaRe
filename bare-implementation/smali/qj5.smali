.class public final Lqj5;
.super Ljava/util/AbstractList;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static a:Lqj5;


# direct methods
.method public static c()Lqj5;
    .locals 1

    .line 1
    sget-object v0, Lqj5;->a:Lqj5;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lqj5;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/AbstractList;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lqj5;->a:Lqj5;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lqj5;->a:Lqj5;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0
.end method

.method public final size()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
