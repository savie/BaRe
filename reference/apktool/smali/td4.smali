.class public final Ltd4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Landroid/content/pm/PackageInstaller$Session;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInstaller$Session;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltd4;->a:Landroid/content/pm/PackageInstaller$Session;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Ltd4;->a:Landroid/content/pm/PackageInstaller$Session;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
