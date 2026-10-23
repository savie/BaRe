.class public final Lsc9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final c:Lsc9;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Lsc9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsc9;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lsc9;->c:Lsc9;

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
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Luc9;->k:Lho6;

    .line 9
    .line 10
    invoke-virtual {v1, p0, v0}, Lho6;->f0(Lsc9;Ljava/lang/Thread;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
