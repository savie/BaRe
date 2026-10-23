.class public abstract Lzm6;
.super Lml0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>(Ljv1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lml0;-><init>(Ljv1;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-interface {p1}, Ljv1;->getContext()Lox1;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object p1, Llv2;->a:Llv2;

    .line 11
    .line 12
    if-ne p0, p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p0, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    .line 16
    .line 17
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    throw p0

    .line 22
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getContext()Lox1;
    .locals 0

    .line 1
    sget-object p0, Llv2;->a:Llv2;

    .line 2
    .line 3
    return-object p0
.end method
