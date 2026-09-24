.class public Lwf8$b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Lwf8;


# direct methods
.method public constructor <init>(Lwf8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwf8$b;->a:Lwf8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lwf8;
    .locals 0

    .line 1
    iget-object p0, p0, Lwf8$b;->a:Lwf8;

    .line 2
    .line 3
    return-object p0
.end method
