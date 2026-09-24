.class public final Ltm2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Loy5;


# instance fields
.field public final synthetic a:Lfi7;

.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Ljava/util/Set;

.field public final synthetic e:I

.field public final synthetic f:Ljava/util/Set;

.field public final synthetic k:Lwm2;


# direct methods
.method public constructor <init>(Lwm2;Lfi7;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltm2;->k:Lwm2;

    .line 5
    .line 6
    iput-object p2, p0, Ltm2;->a:Lfi7;

    .line 7
    .line 8
    iput-object p3, p0, Ltm2;->b:Ljava/util/Set;

    .line 9
    .line 10
    iput-object p4, p0, Ltm2;->c:Ljava/util/Set;

    .line 11
    .line 12
    iput-object p5, p0, Ltm2;->d:Ljava/util/Set;

    .line 13
    .line 14
    iput p6, p0, Ltm2;->e:I

    .line 15
    .line 16
    iput-object p7, p0, Ltm2;->f:Ljava/util/Set;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final b(Lfi7;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p1, Lfi7;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Ltm2;->k:Lwm2;

    .line 4
    .line 5
    iget-object v2, v1, Lvc7;->d:Lj87;

    .line 6
    .line 7
    iget-object v3, p0, Ltm2;->a:Lfi7;

    .line 8
    .line 9
    iget-object v4, v3, Lfi7;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p1, Lfi7;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v4, v5}, Lw13;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-nez v6, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Lj87;->h(Lfi7;)Lj87;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :cond_0
    invoke-static {v4, v5}, Lw13;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    iget-object v4, v3, Lfi7;->b:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v4, v0}, Lw13;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    :goto_0
    move-object v4, v1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v2, v0}, Lj87;->a(Ljava/lang/String;)Lvc7;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v1, v0

    .line 44
    check-cast v1, Lwm2;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :goto_1
    invoke-virtual {v3, p1}, Lfi7;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    iget v9, p0, Ltm2;->e:I

    .line 54
    .line 55
    iget-object v10, p0, Ltm2;->f:Ljava/util/Set;

    .line 56
    .line 57
    iget-object v6, p0, Ltm2;->b:Ljava/util/Set;

    .line 58
    .line 59
    iget-object v7, p0, Ltm2;->c:Ljava/util/Set;

    .line 60
    .line 61
    iget-object v8, p0, Ltm2;->d:Ljava/util/Set;

    .line 62
    .line 63
    move-object v5, p1

    .line 64
    invoke-static/range {v4 .. v10}, Lwm2;->g(Lwm2;Lfi7;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;)Lvm2;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :cond_2
    const/4 p0, 0x0

    .line 70
    return-object p0
.end method
