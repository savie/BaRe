.class public final Lx8;
.super Ljava/lang/ref/WeakReference;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljo4;

.field public final b:Z

.field public c:Lll6;


# direct methods
.method public constructor <init>(Ljo4;Lfx2;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    .line 3
    .line 4
    const-string p3, "Argument must not be null"

    .line 5
    .line 6
    invoke-static {p1, p3}, Lms8;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lx8;->a:Ljo4;

    .line 10
    .line 11
    iget-boolean p1, p2, Lfx2;->a:Z

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    iput-object p2, p0, Lx8;->c:Lll6;

    .line 15
    .line 16
    iput-boolean p1, p0, Lx8;->b:Z

    .line 17
    .line 18
    return-void
.end method
