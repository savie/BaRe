.class public final Lmf2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic a:Lnf2;


# direct methods
.method public constructor <init>(Lnf2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmf2;->a:Lnf2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmf2;->a:Lnf2;

    .line 2
    .line 3
    iget-object p0, p0, Lnf2;->a:Lny1;

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lny1;->d(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
