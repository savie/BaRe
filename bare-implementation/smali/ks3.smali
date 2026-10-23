.class public final Lks3;
.super Ljava/lang/RuntimeException;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lls3;

.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lls3;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lks3;->a:Lls3;

    .line 5
    .line 6
    iput-object p2, p0, Lks3;->b:Ljava/lang/Throwable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 0

    .line 1
    iget-object p0, p0, Lks3;->b:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object p0
.end method
