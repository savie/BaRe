.class public interface abstract Lokhttp3/internal/http2/PushObserver;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/PushObserver$Companion;
    }
.end annotation


# static fields
.field public static final a:Lokhttp3/internal/http2/PushObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/http2/PushObserver$Companion$PushObserverCancel;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lokhttp3/internal/http2/PushObserver;->a:Lokhttp3/internal/http2/PushObserver;

    .line 7
    .line 8
    return-void
.end method
