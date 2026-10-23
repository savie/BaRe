.class public final Lzu7;
.super Lez2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Lqc6;


# direct methods
.method public constructor <init>(Lqc6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lez2;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzu7;->d:Lqc6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lqc6;)Lez2;
    .locals 0

    .line 1
    new-instance p0, Lzu7;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lzu7;-><init>(Lqc6;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final b(Lk31;Lqc6;)Lpa2;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final c(Lwc2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Lpa2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final e()Lqc6;
    .locals 0

    .line 1
    iget-object p0, p0, Lzu7;->d:Lqc6;

    .line 2
    .line 3
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lzu7;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lzu7;

    .line 6
    .line 7
    iget-object p1, p1, Lzu7;->d:Lqc6;

    .line 8
    .line 9
    iget-object p0, p0, Lzu7;->d:Lqc6;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Lqc6;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final f(Lez2;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lzu7;

    .line 2
    .line 3
    return p0
.end method

.method public final g(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lzu7;->d:Lqc6;

    .line 2
    .line 3
    invoke-virtual {p0}, Lqc6;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
