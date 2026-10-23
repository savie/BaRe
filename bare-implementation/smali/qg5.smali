.class public Lqg5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqg5$a;
    }
.end annotation


# instance fields
.field public final a:Lpg5;


# direct methods
.method private constructor <init>(Lpg5;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lqg5;->a:Lpg5;

    return-void
.end method

.method public synthetic constructor <init>(Lpg5;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lqg5;-><init>(Lpg5;)V

    return-void
.end method

.method public constructor <init>(Lqg5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lqg5;->a:Lpg5;

    .line 6
    .line 7
    iget-object p1, p1, Lqg5;->a:Lpg5;

    .line 8
    .line 9
    iput-object p1, p0, Lqg5;->a:Lpg5;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lwx4;)Ljava/lang/Iterable;
    .locals 2

    .line 1
    iget-object p0, p0, Lqg5;->a:Lpg5;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lwx4;->z()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lwx4;->I()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Lwx4;->G()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Lyx4;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Lyx4;-><init>(Lwx4;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Ldb2;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-direct {p1, v1, p0, v0}, Ldb2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_1
    new-instance v0, Lay4;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Lay4;-><init>(Lwx4;)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Lmg5;

    .line 43
    .line 44
    invoke-direct {p1, p0, v0}, Lmg5;-><init>(Lpg5;Lay4;)V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_2
    :goto_0
    new-instance v0, Lpx4;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Lpx4;-><init>(Lwx4;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Log5;

    .line 54
    .line 55
    invoke-direct {p1, p0, v0}, Log5;-><init>(Lpg5;Lpx4;)V

    .line 56
    .line 57
    .line 58
    return-object p1
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lqg5;->a:Lpg5;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcn0;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
