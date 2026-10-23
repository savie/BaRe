.class public Lv64$f;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Lokhttp3/Request;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lokhttp3/Request;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv64$f;->a:Lokhttp3/Request;

    .line 5
    .line 6
    iput-object p2, p0, Lv64$f;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
