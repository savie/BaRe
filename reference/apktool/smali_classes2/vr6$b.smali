.class public final Lvr6$b;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvr6;->clearMessages(Lil0;Lmt3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $ctx:Lil0;

.field final synthetic $onCleared:Lmt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmt3;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Lil0;Lmt3;Ljv1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lil0;",
            "Lmt3;",
            "Ljv1;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lvr6$b;->$ctx:Lil0;

    .line 2
    .line 3
    iput-object p2, p0, Lvr6$b;->$onCleared:Lmt3;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljv1;",
            ")",
            "Ljv1;"
        }
    .end annotation

    .line 1
    new-instance p1, Lvr6$b;

    .line 2
    .line 3
    iget-object v0, p0, Lvr6$b;->$ctx:Lil0;

    .line 4
    .line 5
    iget-object p0, p0, Lvr6$b;->$onCleared:Lmt3;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lvr6$b;-><init>(Lil0;Lmt3;Ljv1;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lxx1;

    check-cast p2, Ljv1;

    invoke-virtual {p0, p1, p2}, Lvr6$b;->invoke(Lxx1;Ljv1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lxx1;Ljv1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxx1;",
            "Ljv1;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lvr6$b;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lvr6$b;

    .line 6
    .line 7
    sget-object p1, Lbe8;->a:Lbe8;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lvr6$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lvr6$b;->label:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lvr6;->INSTANCE:Lvr6;

    .line 9
    .line 10
    invoke-static {p1}, Lvr6;->access$getDao(Lvr6;)Lkv6;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Lkv6;->deleteAll()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lvr6$b;->$ctx:Lil0;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lvr6$b;->$ctx:Lil0;

    .line 26
    .line 27
    invoke-virtual {p1}, Lil0;->H()V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lvr6$b;->$onCleared:Lmt3;

    .line 31
    .line 32
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0
.end method
