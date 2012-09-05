Facter.add(:firstrun) do
    setcode do
        File.exists?("/etc/puppet/.firstrun") ? nil : "1"
    end
end
