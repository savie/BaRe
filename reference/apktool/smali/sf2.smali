.class public final Lsf2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Le41;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lmf5;

.field public final d:Lmw6;

.field public final e:Lmw6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lya8;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lsf2;->f:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lmf5;Le41;Lmw6;Lmw6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsf2;->b:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, Lsf2;->c:Lmf5;

    .line 7
    .line 8
    iput-object p3, p0, Lsf2;->a:Le41;

    .line 9
    .line 10
    iput-object p4, p0, Lsf2;->d:Lmw6;

    .line 11
    .line 12
    iput-object p5, p0, Lsf2;->e:Lmw6;

    .line 13
    .line 14
    return-void
.end method
