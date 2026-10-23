.class public final Lvo2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lox1;


# instance fields
.field public final synthetic a:Lox1;

.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lox1;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvo2;->a:Lox1;

    .line 5
    .line 6
    iput-object p2, p0, Lvo2;->b:Ljava/lang/Throwable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lqt3;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo2;->a:Lox1;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lox1;->fold(Ljava/lang/Object;Lqt3;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final get(Lnx1;)Lmx1;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo2;->a:Lox1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lox1;->get(Lnx1;)Lmx1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final minusKey(Lnx1;)Lox1;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo2;->a:Lox1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lox1;->minusKey(Lnx1;)Lox1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final plus(Lox1;)Lox1;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo2;->a:Lox1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lox1;->plus(Lox1;)Lox1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
