.class public final Lec2;
.super Lgs4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lic2;


# direct methods
.method public constructor <init>(Lic2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lec2;->a:Lic2;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lgs4;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p0, p0, Lec2;->a:Lic2;

    .line 4
    .line 5
    iget-object v0, p0, Lic2;->j:Lgv7;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lic2;->h:Ltr9;

    .line 10
    .line 11
    new-instance v1, Lne3;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lne3;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ltr9;->f(Lem7;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Lgv7;->a()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Laa3;

    .line 30
    .line 31
    invoke-virtual {p0}, Laa3;->close()V

    .line 32
    .line 33
    .line 34
    :cond_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 35
    .line 36
    return-object p0
.end method
