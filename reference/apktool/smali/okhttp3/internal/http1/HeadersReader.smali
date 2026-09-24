.class public final Lokhttp3/internal/http1/HeadersReader;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http1/HeadersReader$Companion;
    }
.end annotation


# instance fields
.field public final a:Lzw0;

.field public b:J


# direct methods
.method public constructor <init>(Lzw0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lokhttp3/internal/http1/HeadersReader;->a:Lzw0;

    .line 8
    .line 9
    const-wide/32 v0, 0x40000

    .line 10
    .line 11
    .line 12
    iput-wide v0, p0, Lokhttp3/internal/http1/HeadersReader;->b:J

    .line 13
    .line 14
    return-void
.end method
