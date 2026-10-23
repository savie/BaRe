.class public final Ln34;
.super Lg3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lk34;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lk34;

    .line 5
    .line 6
    invoke-direct {v0}, Lon5;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ln34;->a:Lk34;

    .line 10
    .line 11
    iput p1, v0, Lk34;->f:I

    .line 12
    .line 13
    iput-object p2, p0, Ln34;->b:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final e()Lws0;
    .locals 0

    .line 1
    iget-object p0, p0, Ln34;->a:Lk34;

    .line 2
    .line 3
    return-object p0
.end method

.method public final g(Lic4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln34;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Ln34;->a:Lk34;

    .line 4
    .line 5
    invoke-virtual {p1, v0, p0}, Lic4;->f(Ljava/lang/String;Lon5;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final h(Lun2;)Lys0;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
