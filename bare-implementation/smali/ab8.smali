.class public final Lab8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:J

.field public final b:Lfi7;

.field public final c:Lj87;

.field public final d:Lru3;

.field public final e:Ldi7;

.field public final f:Lcv6;


# direct methods
.method public constructor <init>(JLfi7;Lj87;Ldi7;Lxr1;Lcv6;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lab8;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lab8;->b:Lfi7;

    .line 7
    .line 8
    iput-object p4, p0, Lab8;->c:Lj87;

    .line 9
    .line 10
    iget-object p1, p6, Lxr1;->b:Lru3;

    .line 11
    .line 12
    iput-object p1, p0, Lab8;->d:Lru3;

    .line 13
    .line 14
    iput-object p5, p0, Lab8;->e:Ldi7;

    .line 15
    .line 16
    iput-object p7, p0, Lab8;->f:Lcv6;

    .line 17
    .line 18
    sget-object p0, Llu6;->b:Llu6;

    .line 19
    .line 20
    invoke-interface {p8, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    iget-object p0, p1, Lru3;->e:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lus6;

    .line 29
    .line 30
    invoke-virtual {p0}, Lus6;->a()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p6}, Lxr1;->b()Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TreeConnect["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lab8;->a:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "]("

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lab8;->b:Lfi7;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
