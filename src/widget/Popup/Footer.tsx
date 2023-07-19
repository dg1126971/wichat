import { FC } from "react";

type Props = {};

const Index: FC<Props> = () => {
  return (
    <footer className="text-xs text-gray-300 text-center pb-2">
      Host your own{" "}
      <a
        href="ruma.ruma.rr.nu"
        target="_blank"
        rel="noopener noreferrer"
        className="text-gray-400"
      >
         wi.chat
      </a>
    </footer>
  );
};

export default Index;
