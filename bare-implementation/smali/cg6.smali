.class public final Lcg6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ltu1;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Loc;

.field public final c:Loc;

.field public final d:Lbc;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Loc;Lfc;Lbc;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcg6;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcg6;->b:Loc;

    .line 7
    .line 8
    iput-object p3, p0, Lcg6;->c:Loc;

    .line 9
    .line 10
    iput-object p4, p0, Lcg6;->d:Lbc;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcg6;->e:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lc35;Lam0;)Lgu1;
    .locals 1

    .line 1
    new-instance v0, Lbg6;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p0}, Lbg6;-><init>(Lc35;Lam0;Lcg6;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RectangleShape{position="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcg6;->b:Loc;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", size="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcg6;->c:Loc;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 p0, 0x7d

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
