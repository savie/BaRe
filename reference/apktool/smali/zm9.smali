.class public final Lzm9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final b:Lzm9;


# instance fields
.field public final a:Lda9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzm9;

    .line 2
    .line 3
    invoke-direct {v0}, Lzm9;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lzm9;->b:Lzm9;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lbn9;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lda9;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lda9;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lzm9;->a:Lda9;

    .line 15
    .line 16
    return-void
.end method
