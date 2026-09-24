.class public final Lzh2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lf77;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:Lqt3;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ILqt3;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lzh2;->a:Ljava/lang/CharSequence;

    .line 8
    .line 9
    iput p2, p0, Lzh2;->b:I

    .line 10
    .line 11
    iput-object p3, p0, Lzh2;->c:Lqt3;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lyh2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lyh2;-><init>(Lzh2;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
