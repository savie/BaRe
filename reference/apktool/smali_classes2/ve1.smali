.class public final Lve1;
.super Ljava/io/FilterInputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lokhttp3/Response;


# direct methods
.method public constructor <init>(Lokhttp3/Response;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lve1;->a:Lokhttp3/Response;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lve1;->a:Lokhttp3/Response;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
