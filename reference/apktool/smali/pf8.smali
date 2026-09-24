.class public final Lpf8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmx1;


# instance fields
.field public final a:Lpf8;

.field public final b:Lic2;


# direct methods
.method public constructor <init>(Lpf8;Lic2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpf8;->a:Lpf8;

    .line 5
    .line 6
    iput-object p2, p0, Lpf8;->b:Lic2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Lic2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lpf8;->b:Lic2;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lpf8;->a:Lpf8;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lpf8;->b(Lic2;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    const-string p0, "Calling updateData inside updateData on the same DataStore instance is not supported\nsince updates made in the parent updateData call will not be visible to the nested\nupdateData call. See https://issuetracker.google.com/issues/241760537 for details."

    .line 14
    .line 15
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final fold(Ljava/lang/Object;Lqt3;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p2, p1, p0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final get(Lnx1;)Lmx1;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lod2;->k(Lmx1;Lnx1;)Lmx1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getKey()Lnx1;
    .locals 0

    .line 1
    sget-object p0, Lfo8;->b:Lfo8;

    .line 2
    .line 3
    return-object p0
.end method

.method public final minusKey(Lnx1;)Lox1;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lod2;->r(Lmx1;Lnx1;)Lox1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final plus(Lox1;)Lox1;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lod2;->u(Lmx1;Lox1;)Lox1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
