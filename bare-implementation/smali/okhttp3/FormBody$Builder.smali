.class public final Lokhttp3/FormBody$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/FormBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lokhttp3/FormBody$Builder;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lokhttp3/FormBody$Builder;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    const/16 v8, 0x5b

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v0, p1

    .line 18
    invoke-static/range {v0 .. v8}, Lokhttp3/internal/url/_UrlKt;->b(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lokhttp3/FormBody$Builder;->a:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    const/16 v9, 0x5b

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const-string v4, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    .line 32
    .line 33
    move-object v1, p2

    .line 34
    invoke-static/range {v1 .. v9}, Lokhttp3/internal/url/_UrlKt;->b(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p0, p0, Lokhttp3/FormBody$Builder;->b:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v7, 0x0

    .line 5
    const/16 v8, 0x53

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x1

    .line 14
    move-object v0, p1

    .line 15
    invoke-static/range {v0 .. v8}, Lokhttp3/internal/url/_UrlKt;->b(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lokhttp3/FormBody$Builder;->a:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    const/16 v9, 0x53

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const-string v4, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x1

    .line 33
    move-object v1, p2

    .line 34
    invoke-static/range {v1 .. v9}, Lokhttp3/internal/url/_UrlKt;->b(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p0, p0, Lokhttp3/FormBody$Builder;->b:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final c()Lokhttp3/FormBody;
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/FormBody;

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/FormBody$Builder;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object p0, p0, Lokhttp3/FormBody$Builder;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lokhttp3/FormBody;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
