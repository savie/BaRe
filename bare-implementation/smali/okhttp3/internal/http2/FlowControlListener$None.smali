.class public final Lokhttp3/internal/http2/FlowControlListener$None;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/internal/http2/FlowControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/FlowControlListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "None"
.end annotation


# static fields
.field public static final a:Lokhttp3/internal/http2/FlowControlListener$None;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/http2/FlowControlListener$None;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lokhttp3/internal/http2/FlowControlListener$None;->a:Lokhttp3/internal/http2/FlowControlListener$None;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/internal/http2/flowcontrol/WindowCounter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lokhttp3/internal/http2/flowcontrol/WindowCounter;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method
