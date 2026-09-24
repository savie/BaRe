.class public Lqk7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqk7$a;
    }
.end annotation

.annotation runtime Ljk5;
    reference = "http://s3.amazonaws.com/doc/2006-03-01/"
.end annotation

.annotation runtime Lno6;
    name = "ServerSideEncryptionConfiguration"
    strict = false
.end annotation


# instance fields
.field private a:Lqk7$a;
    .annotation runtime Lat2;
        name = "Rule"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqk7$a;)V
    .locals 0
    .param p1    # Lqk7$a;
        .annotation runtime Lat2;
            name = "Rule"
            required = false
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqk7;->a:Lqk7$a;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Ljava/lang/String;)Lqk7;
    .locals 3

    .line 1
    new-instance v0, Lqk7;

    .line 2
    .line 3
    new-instance v1, Lqk7$a;

    .line 4
    .line 5
    sget-object v2, Lpk7;->c:Lpk7;

    .line 6
    .line 7
    invoke-direct {v1, v2, p0}, Lqk7$a;-><init>(Lpk7;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lqk7;-><init>(Lqk7$a;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static b()Lqk7;
    .locals 4

    .line 1
    new-instance v0, Lqk7;

    .line 2
    .line 3
    new-instance v1, Lqk7$a;

    .line 4
    .line 5
    sget-object v2, Lpk7;->b:Lpk7;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, v2, v3}, Lqk7$a;-><init>(Lpk7;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lqk7;-><init>(Lqk7$a;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public c()Lqk7$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lqk7;->a:Lqk7$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lqk7;->a:Lqk7$a;

    .line 2
    .line 3
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "SseConfiguration{rule="

    .line 8
    .line 9
    const-string v1, "}"

    .line 10
    .line 11
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
