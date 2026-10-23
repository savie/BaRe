.class public final Lms1;
.super Lp35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic h:Lns1;


# direct methods
.method public constructor <init>(Lns1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lms1;->h:Lns1;

    .line 2
    .line 3
    const/16 p1, 0x19

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lp35;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lms1;->h:Lns1;

    .line 7
    .line 8
    iget-object p0, p0, Lns1;->a:Lfw6;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Lnw6;

    .line 4
    .line 5
    check-cast p3, Lnw6;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-interface {p2}, Ljava/lang/AutoCloseable;->close()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
