# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4

EAPI=8

inherit cargo git-r3

DESCRIPTION="Open source Virtual Machine Monitor (VMM) that runs on top of KVM"
HOMEPAGE="https://www.cloudhypervisor.org"
EGIT_REPO_URI="https://github.com/cloud-hypervisor/cloud-hypervisor.git"

LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD Boost-1.0 MIT MPL-2.0 Unicode-DFS-2016 Unlicense ZLIB"
SLOT="0"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_unpack() {
	git-r3_src_unpack
	cargo_live_src_unpack
}

src_configure() {
	cargo_gen_config
	cargo_src_configure --frozen
}

src_install() {
	cargo_src_install
	dodoc -r docs
}
