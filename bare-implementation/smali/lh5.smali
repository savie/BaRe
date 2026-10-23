.class public final Llh5;
.super Lqi4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public d:Lqi4;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llh5;->a:Ljava/lang/reflect/Type;

    .line 5
    .line 6
    iput-object p2, p0, Llh5;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Llh5;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lbn4;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Llh5;->d:Lqi4;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lqi4;->a(Lbn4;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, "JsonAdapter isn\'t ready"

    .line 11
    .line 12
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public final e(Ldn4;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Llh5;->d:Lqi4;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lqi4;->e(Ldn4;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "JsonAdapter isn\'t ready"

    .line 10
    .line 11
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Llh5;->d:Lqi4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
