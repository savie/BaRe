.class public Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mPackageName:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "browser_package_name"
    .end annotation
.end field

.field private final mSignatureHashes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ly77;
        value = "browser_signature_hashes"
    .end annotation
.end field

.field private final mVersionLowerBound:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "browser_version_lower_bound"
    .end annotation
.end field

.field private final mVersionUpperBound:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "browser_version_upper_bound"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;->mPackageName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;->mSignatureHashes:Ljava/util/Set;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;->mVersionLowerBound:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;->mVersionUpperBound:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static getBrowserSafeListForSwitchBrowser()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "7fmduHKTdHHrlMvldlEqAIlSfii1tl35bxj1OXN5Ve8c4lU6URVu4xtSHc3BVZxS6WWJnxMDhIfQN0N0K2NDJg=="

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 17
    .line 18
    const-string v3, "com.android.chrome"

    .line 19
    .line 20
    invoke-direct {v2, v3, v1}, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;-><init>(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/util/HashSet;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "Ivy-Rk6ztai_IudfbyUrSHugzRqAtHWslFvHT0PTvLMsEKLUIgv7ZZbVxygWy_M5mOPpfjZrd3vOx3t-cA6fVQ=="

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    new-instance v2, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 37
    .line 38
    const-string v3, "com.microsoft.emmx"

    .line 39
    .line 40
    invoke-direct {v2, v3, v1}, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;-><init>(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/util/HashSet;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "Nd3EDftVD0lR3Lz0Odq8NMkWWyM5CT8lahePkMtzvS6YkVYne_Hn5jaDSxrdXkN1s4AywAnav2RnarZvcqVFJQ=="

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    new-instance v2, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 57
    .line 58
    const-string v3, "com.amazon.enterprise.access.android"

    .line 59
    .line 60
    invoke-direct {v2, v3, v1}, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;-><init>(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    return-object v0
.end method


# virtual methods
.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSignatureHashes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;->mSignatureHashes:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVersionLowerBound()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;->mVersionLowerBound:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVersionUpperBound()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;->mVersionUpperBound:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
