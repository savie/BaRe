.class public final Lmp1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lta4;


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lmp1;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmp1;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public g(Lgy5;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p2, Lqn5;

    .line 2
    .line 3
    check-cast p3, Ljava/lang/Void;

    .line 4
    .line 5
    iget p3, p1, Lgy5;->b:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lgy5;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "/"

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    move v2, p3

    .line 22
    :goto_0
    iget v3, p1, Lgy5;->c:I

    .line 23
    .line 24
    if-ge v2, v3, :cond_2

    .line 25
    .line 26
    if-le v2, p3, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v3, p1, Lgy5;->a:[Lm61;

    .line 32
    .line 33
    aget-object v3, v3, v2

    .line 34
    .line 35
    iget-object v3, v3, Lm61;->a:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :goto_1
    const/4 p1, 0x1

    .line 48
    invoke-interface {p2, p1}, Lqn5;->g0(Z)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p0, p0, Lmp1;->a:Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    return-object p0
.end method
